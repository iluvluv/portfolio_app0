package kr.ac.sunmoon.model.service;

import java.util.ArrayList;

import kr.ac.sunmoon.model.dao.PortfolioDAO;
import kr.ac.sunmoon.model.dto.Portfolio;
import kr.ac.sunmoon.model.dto.PortfolioData;

public class PortfolioService {
	
	private PortfolioDAO pDao = new PortfolioDAO();
	
	public void register(Portfolio p) throws Exception {
		int no = pDao.insert(p);
		ArrayList<PortfolioData> list = p.getDatalist();
		if(list != null && list.size()>0) {
			pDao.insert(no,p.getDatalist());
		}
		
	}
	
	public ArrayList<Portfolio> getList() throws Exception{
		return pDao.select();
	}
	
	public ArrayList<Portfolio> search(String title) throws Exception{
		return pDao.select(title);
	}
	public Portfolio getDetail(int no) throws Exception {
		Portfolio p =pDao.select(no);
		p.setDatalist(pDao.selectDataList(no));
		return p;
	}
	public void modify(Portfolio p) throws Exception {
		pDao.update(p);
	}
	public void remove(int no) throws Exception {
		pDao.delete(no);
	}
}
