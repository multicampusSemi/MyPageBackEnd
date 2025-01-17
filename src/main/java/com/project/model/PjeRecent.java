package com.project.model;

public class PjeRecent {
    private String productName;
    private int quantity;
    private int price;
    private String orderNumber;
    private String photo; // 이미지 URL 추가

    // Getter와 Setter 추가
    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    // 기존 필드의 Getter와 Setter 유지
}
