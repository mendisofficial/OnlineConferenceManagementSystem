/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chathushamendis
 */
public class Participants {
    private int participant_id;
    private String full_name;
    private String email;
    private String contact_number;
    private String gender;
    private String participant_type;

    /**
     * @return the participant_id
     */
    public int getParticipant_id() {
        return participant_id;
    }

    /**
     * @param participant_id the participant_id to set
     */
    public void setParticipant_id(int participant_id) {
        this.participant_id = participant_id;
    }

    /**
     * @return the full_name
     */
    public String getFull_name() {
        return full_name;
    }

    /**
     * @param full_name the full_name to set
     */
    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the contact_number
     */
    public String getContact_number() {
        return contact_number;
    }

    /**
     * @param contact_number the contact_number to set
     */
    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the participant_type
     */
    public String getParticipant_type() {
        return participant_type;
    }

    /**
     * @param participant_type the participant_type to set
     */
    public void setParticipant_type(String participant_type) {
        this.participant_type = participant_type;
    }
}
