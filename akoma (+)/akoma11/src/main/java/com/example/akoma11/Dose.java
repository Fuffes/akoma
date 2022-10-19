package com.example.akoma11;



import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Dose {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;

    private String inh_type;
    private String trigger;
    private LocalDate date;
    private String status;
    private String filename;
    private String comment;

    public String getDosDoc() {
        return dosDoc;
    }

    public void setDosDoc(String dosDoc) {
        this.dosDoc = dosDoc;
    }

    private String dosDoc;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;




    public Dose() {
    }

    public Dose(User user, String inh_type, String trigger, LocalDate date, String dosDoc) {
        this.author = user;
        this.inh_type = inh_type;
        this.trigger = trigger;
        this.date = date;
    }

    public String getStatus() {
        return status;
    }
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }
    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Long getAuthorId(){return author.getId();}


    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>";
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public void setInh_type(String text) {
        this.inh_type = inh_type;
    }

    public String getInh_type() {
        return inh_type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTrigger() {
        return trigger;
    }

    public void setTrigger(String tag) {
        this.trigger = trigger;
    }
}
