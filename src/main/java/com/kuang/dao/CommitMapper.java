package com.kuang.dao;

import com.kuang.pojo.Commit;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface CommitMapper {
    int addCommit(Commit commit);
    int deleteCommit(int commitID);
    List<Commit> selectCommitByBaseID(@Param("baseID") int baseID, @Param("commitType") String commitType);
}
