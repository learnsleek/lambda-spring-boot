package com.moneyclub.services.core;

import com.moneyclub.dto.ResponseDTO;
import com.moneyclub.exception.BusinessException;

import java.util.List;

public interface IBaseService<T, U> {

    T getById(Integer requestId) throws BusinessException;

    ResponseDTO create(T request) throws BusinessException;

    List<T> getAll() throws BusinessException;

    ResponseDTO patch(Integer id, U partial) throws BusinessException;

    ResponseDTO update(Integer id, T request) throws BusinessException;

    ResponseDTO delete(Integer id) throws BusinessException;
}
