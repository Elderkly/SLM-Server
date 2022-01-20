package com.kuang.dao;

import com.kuang.pojo.Config;

public interface ConfigMapper {
    int setConfig(Config config);
    Config getConfig();
}
