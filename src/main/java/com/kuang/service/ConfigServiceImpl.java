package com.kuang.service;

import com.kuang.dao.ConfigMapper;
import com.kuang.pojo.Config;

public class ConfigServiceImpl implements ConfigService{
    private ConfigMapper configMapper;

    public void setConfigMapper(ConfigMapper configMapper) {
        this.configMapper = configMapper;
    }

    @Override
    public int setConfig(Config config) {
        return configMapper.setConfig(config);
    }

    @Override
    public Config getConfig() {
        return configMapper.getConfig();
    }
}
