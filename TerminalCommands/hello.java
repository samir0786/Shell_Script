public class hello{
	public static void main(String[] args){
		while(true){
			System.out.println("hi sam");
				try{
					Thread.sleep(6000000);
				}catch(Exception ex){
			System.out.println(ex);
			}
		}
	}
}
