package com.jeferson.DSlearn.Entity;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.time.Instant;

@Entity
@Table(name = "tb_enrollment")
public class Enrollment {

    @EmbeddedId
    private EnrollmentPK id = new EnrollmentPK();
    private Instant enrollMoment;
    private Instant refundMoment;
    private boolean available;
    private boolean onlyUpdate;

    public Enrollment(){

    }

    public Enrollment(User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available, boolean onlyUpdate) {
        id.setUser(user);
        id.setOffer(offer);
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }

    public User getStudent(){
        return id.getUser();
    }

    public void setStudent(User user){
        id.setUser(user);
    }

    public Offer getOffer(){
        return id.getOffer();
    }

    public void setOffer(Offer offer){
        id.setOffer(offer);
    }


    public Instant getEnrollMoment() {
        return enrollMoment;
    }

    public void setEnrollMoment(Instant enrollMoment) {
        this.enrollMoment = enrollMoment;
    }

    public Instant getRefundMoment() {
        return refundMoment;
    }

    public void setRefundMoment(Instant refundMoment) {
        this.refundMoment = refundMoment;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public boolean isOnlyUpdate() {
        return onlyUpdate;
    }

    public void setOnlyUpdate(boolean onlyUpdate) {
        this.onlyUpdate = onlyUpdate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Enrollment that = (Enrollment) o;
        return available == that.available && onlyUpdate == that.onlyUpdate && id.equals(that.id) && enrollMoment.equals(that.enrollMoment) && refundMoment.equals(that.refundMoment);
    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + enrollMoment.hashCode();
        result = 31 * result + refundMoment.hashCode();
        result = 31 * result + Boolean.hashCode(available);
        result = 31 * result + Boolean.hashCode(onlyUpdate);
        return result;
    }
}
