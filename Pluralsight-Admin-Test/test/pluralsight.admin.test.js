const expect = require("chai").expect;
const fetch = require("node-fetch");

describe("Courses tests", () => {
  it("should bring a list of courses", async () => {
    const coursesResponse = await fetch(
      `http://${process.env.NETWORK_VAR}:3001/courses`
    );
    const courses = await coursesResponse.json();
    expect(courses).to.have.lengthOf.above(1);
  });
});
