package com.cognizant.searchservice;

//import org.junit.jupiter.api.Test;
//import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;

import com.cognizant.searchservice.model.MentorSkills;
import com.cognizant.searchservice.service.SearchService;


@SpringBootTest
public class SearchServiceApplicationTests {

    @Mock
    SearchService searchService;
    
    @Before
    public void init() {
                    MockitoAnnotations.initMocks(this);
    }

    
    @Test
    public void search() {
    
                    MentorSkills mentorSkills1 =new MentorSkills();
                    mentorSkills1.setExperience((long) 1);
                    mentorSkills1.setFacilities("all");
                    mentorSkills1.setId((long) 1);
//                mentorSkills1.setMentorId(mentorId);
                    mentorSkills1.setRating((long) 4);
                    mentorSkills1.setId((long) 2);
                    mentorSkills1.setTrainings("few");
                    
                    
                    
                    List<MentorSkills> mentorskill = new ArrayList<>();
                    mentorskill.add(mentorSkills1);
                    when(searchService.getAll()).thenReturn(mentorskill);
                    
                    //test
                    Long testid = new Long("2");
                    
                    List<MentorSkills> testMentorSkill=searchService.getAll();
                    assertEquals(1, testMentorSkill.size());
                    for(MentorSkills mentorskills : testMentorSkill) {
                                    assertEquals( testid, mentorskills.getId());
                    }
                    
                    verify(searchService).getAll();
                    
    }




}
