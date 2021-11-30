package btluyentap.service;

import btluyentap.model.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentServiceImpl implements StudentService{
    private List<Student> studentList;
    public StudentServiceImpl() {
        studentList=new ArrayList<>();
        studentList.add(new Student(1,"anh",10,10,10));
        studentList.add(new Student(1,"khanh",9,9,9));
        studentList.add(new Student(1,"huong",8,8,8));
        studentList.add(new Student(1,"dung",9,9,9));
    }

    @Override
    public List<Student> findAll() {
        return studentList;
    }

    @Override
    public void add(Student student) {
        studentList.add(student);
    }

    @Override
    public void edit(int id, Student student) {
        studentList.set(findId(id),student);

    }

    @Override
    public void delete(int id) {
        studentList.remove(findId(id));
    }

    @Override
    public Student findById(int id) {
        for (int i = 0; i < studentList.size(); i++) {
            if(studentList.get(i).getId()==id){
                return studentList.get(i);
            }
        }
        return null;
    }

    @Override
    public int findId(int id) {
        for (int i = 0; i < studentList.size(); i++) {
            if(studentList.get(i).getId()==id){
                return i;
            }
        }
        return -1;
    }

    @Override
    public Student findById(String name) {
        for (int i = 0; i < studentList.size(); i++) {
            if(studentList.get(i).getName().equals(name)){
                return studentList.get(i);
            }
        }
        return null;
    }
}
