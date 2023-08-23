package com.bankwithprofit.basemicroservice.data.repository.impl;

import com.bankwithprofit.basemicroservice.data.repository.BaseMicroServiceRepository;

public class BaseMicroServiceRepositoryImpl implements BaseMicroServiceRepository {
    @Override
    public String findById(Long id) {
        return "baseMicroService";
    }
}
