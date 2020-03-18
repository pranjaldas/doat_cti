/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.response;

public class AddressServiceResponse<T> {
    private String status;
    private T data;

    public AddressServiceResponse(String status, T data) {
        this.status = status;
        this.data = data;
    }

    public AddressServiceResponse() {
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "AddressServiceResponse{" +
                "status='" + status + '\'' +
                ", data=" + data +
                '}';
    }
}
