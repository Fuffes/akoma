package com.example.akoma11;


import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
    User findByRolesIs(Role role);

    User findByActivationCode(String code);
}
