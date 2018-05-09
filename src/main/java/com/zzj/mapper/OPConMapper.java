package com.zzj.mapper;

import com.zzj.model.OPConExample;
import com.zzj.model.OPConKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OPConMapper {
    int countByExample(OPConExample example);

    int deleteByExample(OPConExample example);

    int deleteByPrimaryKey(OPConKey key);

    int insert(OPConKey record);

    int insertSelective(OPConKey record);

    List<OPConKey> selectByExample(OPConExample example);

    int updateByExampleSelective(@Param("record") OPConKey record, @Param("example") OPConExample example);

    int updateByExample(@Param("record") OPConKey record, @Param("example") OPConExample example);
}