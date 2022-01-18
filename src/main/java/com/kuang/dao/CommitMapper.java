package com.kuang.dao;

import com.kuang.pojo.Commit;

import java.util.List;

public interface CommitMapper {
    int addCommit(Commit commit);
    int deleteCommit(int commitID);
    List<Commit> selectCommitByBaseID(int baseID);
}
