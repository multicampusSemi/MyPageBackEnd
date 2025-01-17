package com.project.model;

import java.time.LocalDateTime;



public class PjeOrder {
    public PjeOrder(int id, int userId, int totalPrice, String status, LocalDateTime createdAt,
			LocalDateTime updatedAt) {
		super();
		this.id = id;
		this.userId = userId;
		this.totalPrice = totalPrice;
		this.status = status;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LocalDateTime getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}
	public LocalDateTime getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(LocalDateTime updatedAt) {
		this.updatedAt = updatedAt;
	}
	public PjeOrder() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "PjeOrder [id=" + id + ", userId=" + userId + ", totalPrice=" + totalPrice + ", status=" + status
				+ ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	private int id;
    private int userId;
    private int totalPrice; 
    private String status;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}