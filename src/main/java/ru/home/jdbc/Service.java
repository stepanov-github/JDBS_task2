package ru.home.jdbc;

import lombok.AllArgsConstructor;

import java.util.List;

@org.springframework.stereotype.Service
@AllArgsConstructor
public class Service {
    private Repository repository;

    protected List<String> getProductName(String name) {
        return repository.getProductName(name);
    }
}
