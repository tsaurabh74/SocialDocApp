package com.socialdocapp.model;

public class LikePost extends Doctor {

    private int likePostId;
    private int postId;
    private int doctorId;

    public LikePost(int likePostId, int postId, int doctorId) {
        this.likePostId = likePostId;
        this.postId = postId;
        this.doctorId = doctorId;
    }

    public LikePost() {
    }

    public int getLikePostId() {
        return likePostId;
    }

    public void setLikePostId(int likePostId) {
        this.likePostId = likePostId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

}
