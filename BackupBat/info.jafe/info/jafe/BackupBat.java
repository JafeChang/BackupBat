package info.jafe;

import java.awt.Color;
import java.awt.Point;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.swing.JFrame;
import javax.swing.JPanel;

public class BackupBat {
	public static void main(String[] args) {
		// File file=new File(System.getenv("SystemRoot")+"/bak.bat");TODO

		// File destFile=new File(System.getenv("SystemRoot")+"/bat2.txt");
		
		new Index();

	}

	void write() throws IOException {
		File file = new File("test.txt");// TODO
		FileWriter fw = new FileWriter(file);
		fw.write("hello");
		fw.close();
	}
}

class Index extends JFrame{
	public JPanel panel=new JPanel();
	Index(){
		super("BackupBat");
		Point screenSize = new Point(java.awt.Toolkit.getDefaultToolkit()
				.getScreenSize().width, java.awt.Toolkit.getDefaultToolkit()
				.getScreenSize().height);
		this.setBounds((int) (0.5 * screenSize.x - 400),
				(int) (0.5 * screenSize.y - 300), 800, 600);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.add(panel);
		
		this.setVisible(true);
	}
}