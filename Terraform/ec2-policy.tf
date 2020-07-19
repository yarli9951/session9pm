resource "aws_iam_role_policy" "vamsi2_policy" {
  name = "vamsi2_policy"

  role   = "${aws_iam_role.vamsi2_role.id}"
  policy = "${file("ec2_policy.json")}"

}


resource "aws_iam_role" "vamsi2_role" {
  name = "vamsi2_role"

  assume_role_policy = "${file("ec2-assumePolicy.json")}"
}

resource "aws_iam_instance_profile" "vamsi2_profile" {
  name = "vams2_profile"
  role = "${aws_iam_role.vamsi2_role.name}"
}

//Using Chrome, please access your office desktop using the following link

//https://workspace-apac.bnpparibas.com
