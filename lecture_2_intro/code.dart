void main() {
String studentName = "Said";
int age = 18;
double GPA = 4;
bool isGraduated = false;

double x = 10;
double y = 5;

print(x+y);
print(x-y);
print(x*y);
print(x/y);

int grade = 50;
if (grade >= 50) {
  print("Pass");
} else {
  print("Fail");
}

String day = "Wednesday";

switch(day) {
  case "Friday":
    print("Weekend");
    break;
    break;
  case "Wednesday":
    print("Flutter day");
    break;
  default : print("Normal day");
}

for(int i  =1; i <= 10; i++) {
  print(i);
}


}