#include <stdio.h>
#include <string.h>
#define SUBJECT 4

struct Student {
	int num;
	char name[20];
	int kor;
	int eng;
	int mat;
	int sci;
//	char sub[SUBJECT];
};

struct Student registerStudent(struct Student *s, int num) {
	
	int i = 0;
	
	while(i < num) {
		printf("%d 번 학생의 학번을 입력해주세요. : \n", i+1);
		scanf("%d", &s[i].num); 
		
		printf("%d 번 학생의 이름을 입력해주세요. : \n", i+1);
		scanf("%s", s[i].name);
		printf("%d 번 학생의 국어 성적을 입력해주세요. : \n", i+1);
		scanf("%d", &s[i].kor);
		printf("%d 번 학생의 영어 성적을 입력해주세요. : \n", i+1);
		scanf("%d", &s[i].eng);
		printf("%d 번 학생의 수학 성적을 입력해주세요. : \n", i+1);
		scanf("%d", &s[i].mat);
		printf("%d 번 학생의 과학 성적을 입력해주세요. : \n", i+1);
		scanf("%d", &s[i].sci);
		printf("입력이 완료 되었습니다.\n	학번 : %d\n	이름 : %s\n	국어 성적 : %d\n	영어 성적 : %d\n	수학 성적 : %d\n	과학 성적 : %d\n\n\n", s[i].num, s[i].name, s[i].kor, s[i].eng, s[i].mat, s[i].sci);
	
		i++;
	}
	
	printf("%s", s[i+1].name);
	return s[num];
}

int list(struct Student *s) {
	int i = 0;

	while(*(s[i].name)) { // student 구조체 안의 이름(문자열)은 포인터 형태므로 그 안의 값을 봐야함 
		printf("%d. %s	 \n", i + 1, s[i].name);
		i++;
	}
	int num;
	printf("조회할 학생의 번호를 입력하세요.\n");
	scanf("%d", &num); 
	return num-1;
}

void info(int i, struct Student *s) {
	printf("\n	학번 : %d\n	이름 : %s\n	국어 성적 : %d\n	영어 성적 : %d\n	수학 성적 : %d\n	과학 성적 : %d\n\n", (s+i) -> num, (s+i) -> name, (s+i) -> kor, (s+i) -> eng, (s+i) -> mat, (s+i) -> sci);
}

void average(int i, struct Student *s) {
	int sum;
	float average;
	sum = s[i].kor + s[i].mat + s[i].sci + s[i].eng;
	average = sum / SUBJECT;
	printf("%d 번 학생의 전체 평균 점수는 %.1f점 입니다.", i+1, average); 
}

void averageAll(int num, struct Student *s) {
	int sum, i, j;
	float average;
	char subArray[4] = {'kor', 'mat', 'sci', 'eng'};
	char *sub;
	for(j = 0 ; j < SUBJECT ; j++ ) {
		for(i = 0 ; i < num ; i++ ) {
			sub = subArray[j];
			sum += (s[i]).(sub);
		}
		average = sum / num;
		printf("%s 과목의 전체 평균 점수는 %.1f점 입니다.", sub[j], average); 
		sum = 0;
	}
}


int main() {
	//struct Student s[5] = {0,};
	struct Student *s = NULL;
	int select;
	int num, i = 0;
	

	char re = 'y';
	while(re == 'y') {
		printf("[학생 관리 시스템]\n");
		printf("1. 학생 정보 조회 \n2. 성적 관리 \n3. 종료\n무엇을 도와드릴까요? ");
		scanf("%d", &select);
		
		switch(select) {
			case 3: 
				re = 'n';
				printf("이용해 주셔서 감사합니다.");
				break;
			case 1:
				printf("1-1. 학생 입력\n1-2. 학생 정보 조회\n1-3. 종료\n");
				scanf("%d", &select);
				switch(select) {
					case 3:
						re = 'n';
						printf("이용해 주셔서 감사합니다."); 
						break;
					case 1:
						printf("등록할 학생의 수를 입력해주세요. : ");
						scanf("%d", &num);
						//s = (struct Student *)malloc(sizeof(struct Student) * num);
						s = calloc(num+1, sizeof(struct Student)); // 초기화와 동시에 0으로 만들어줌 
						registerStudent(s, num);
						break;
					case 2:
						info(list(s), s);
						break;
				}
			case 2:
				printf("2-1. 특정 학생의 평균 점수 \n2-2. 전체 학생의 과목 별 평균 점수 \n2-3. 특정 과목의 1등인 학생의 이름 및 성적 \n2-4 특정 학생의 전체 성적 \n2-5. 종료 \n");
				scanf("%d", &select);
				switch(select) {
					case 5:
						re = 'n';
						printf("이용해 주셔서 감사합니다.");
						break;
					case 1:
						average(list(s), s);
					case 2:
					case 3:
					case 4:	
				}
		}
	}
	free(s);
	return 0;
};
