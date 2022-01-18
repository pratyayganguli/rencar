package rencar.model;

public class State {
	private int id;
	private String name;
	private int status;
	
	public State() {
		
	}
	
	public State(int id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public State(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
