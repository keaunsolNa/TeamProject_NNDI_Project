package com.nndi.client.Account;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.MemberAliveDTO;

public interface AccountMapper {

	int accountMember(MemberAliveDTO memberlist);

	int accountManager(ManagerDTO managerList);

	int updateMember(MemberAliveDTO updateMemberList);

	int deleteMember(MemberAliveDTO loginMember);

}
