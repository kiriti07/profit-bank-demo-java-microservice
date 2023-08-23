package com.bankwithprofit.basemicroservice.data.repository;

import org.springframework.stereotype.Repository;

@Repository
public interface BaseMicroServiceRepository {

    String findById(Long id);
}
