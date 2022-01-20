package com.kuang.service;

import com.kuang.pojo.Config;

public interface ConfigService {
    int setConfig(Config config);
    Config getConfig();
}
