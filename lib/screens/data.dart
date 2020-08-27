import 'package:flutter/material.dart';

 const color = const Color(0xfff4f4ff);
 const blu  = const Color(0xff4c7ffb);
 class File{
 final String filename;
 final String fileimage;
 final String consult;
 final String date;
 final String physician;
 final  String description;

  File({
    this.filename,
    this.fileimage,
    this.consult,
    this.date,
    this.physician,
    this.description,
  });
}

List<File> files = [
File(
  filename:'piekarreview.pdf',
  fileimage: 'images/periodont.jpg',
  consult: 'Dental',
  date: '12.02.2020',
  physician: 'Dr. Adam Piekar',
  description: 'Periodontitis (per-e-o-don-TIE-tis), also called gum disease, is a serious gum infection that damages soft tissue and, without treatment, can destroy the bone that supports your teeth. Periodontitis can cause teeth to loosen or lead to tooth loss. Periodontitis is common but largely preventable. Toothpaste like Crest Gum Detoxify Deep Clean can play a key role in at-home treatment of gingivitis. '
),

File(
  filename:'ofosureview.pdf',
  fileimage: 'images/red2.jpg',
  consult: 'Heart',
  date: '26.01.2020',
  physician: 'Dr. Judith Ofosu',
  description: 'Blood test is a laboratory analysis performed on a blood sample that is usually extracted from a vein in the arm using a hypodermic needle, or via fingerprick. Multiple tests for specific blood components, such as a glucose test or a cholesterol test, are often grouped together into one test panel called a blood panel or blood work.Blood tests are often used in health care to determine physiological and biochemical states, such as disease, mineral content, pharmaceutical drug effectiveness, and organ function.  '
)
];

