package com.example.akoma11;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Collections;
import java.util.UUID;

@Service
public class UserService implements UserDetailsService {

  @Autowired
  private UserRepo userRepo;
  @Autowired
  private MailSend mailSender;
  @Autowired
  private PasswordEncoder passwordEncoder;

  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    return userRepo.findByUsername(username);
  }

  public void updateProfile(User user, String password, String email, String doc, String pr_inh, String re_inh) {
    String userEmail = user.getEmail();
    String userDoc = user.getDoc();
    String userPR_inh = user.getPr_inh();
    String userRE_inh = user.getRe_inh();

    boolean isEmailChanged = (email != null && !email.equals(userEmail)) ||
            (userEmail != null && !userEmail.equals(email));

    boolean isDocChanged = (doc != null && !doc.equals(userDoc)) ||
            (userDoc != null && !userDoc.equals(doc));

    boolean isPRChanged = (pr_inh != null && !pr_inh.equals(userPR_inh)) ||
            (userPR_inh != null && !userPR_inh.equals(pr_inh));

    boolean isREChanged = (re_inh != null && !re_inh.equals(userRE_inh)) ||
            (userRE_inh != null && !userRE_inh.equals(re_inh));

    if (isEmailChanged) {
      user.setEmail(email);
    }
    if (isDocChanged){
      user.setDoc(doc);
    }
    if (isPRChanged){
      user.setPr_inh(pr_inh);
    }
    if (isREChanged){
      user.setRe_inh(re_inh);
    }

    if (!StringUtils.isEmpty(password)) {
      user.setPassword(passwordEncoder.encode(user.getPassword()));
    }
    userRepo.save(user);

  }

  public boolean addUser(User user) {
    User userFromDb = userRepo.findByUsername(user.getUsername());

    if (userFromDb != null) {
      return false;
    }

    user.setActive(true);
    if(user.isIs_doc()){
      user.setRoles(Collections.singleton(Role.ADMIN));

    }else{user.setRoles(Collections.singleton(Role.USER));}
    user.setActivationCode(UUID.randomUUID().toString());
    user.setPassword(passwordEncoder.encode(user.getPassword()));


    userRepo.save(user);

    if (!StringUtils.isEmpty(user.getEmail())) {
      String message = String.format(
              "Hello, %s! \n" +
                      "Welcome to Akoma. Please, visit next link: http://localhost:8081/activate/%s",
              user.getUsername(),
              user.getActivationCode()
      );

      mailSender.send(user.getEmail(), "Activation code", message);
    }

    return true;
  }

  public boolean activateUser(String code) {
    User user = userRepo.findByActivationCode(code);

    if (user == null) {
      return false;
    }

    user.setActivationCode(null);

    userRepo.save(user);

    return true;
  }

}
