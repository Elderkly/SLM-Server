package com.kuang.service;

import com.kuang.dao.CommitMapper;
import com.kuang.pojo.Commit;

import java.util.List;

public class CommitServiceImpl implements CommitService{
    private CommitMapper commitMapper;
    public void setCommitMapper(CommitMapper commitMapper) {
        this.commitMapper = commitMapper;
    }
    @Override
    public int addCommit(Commit commit) {
        return commitMapper.addCommit(commit);
    }

    @Override
    public int deleteCommit(int commitID) {
        return commitMapper.deleteCommit(commitID);
    }

    @Override
    public List<Commit> selectCommitByBaseID(int baseID, String commitType) {
        return commitMapper.selectCommitByBaseID(baseID,commitType);
    }
}
