package svc689;

import java.sql.Connection;
import java.util.ArrayList;

import dao689.DogDAO;

import static db689.JdbcUtil.*;
import vo689.Dog;

public class DogListService {

	public ArrayList<Dog> getDogList() {
		DogDAO dogDAO = DogDAO.getInstance();
		Connection conn = getConnection();
		dogDAO.setConnection(conn);
		ArrayList<Dog> dogList = dogDAO.selectDogList();
		close(conn);
		return dogList;
	}

}
