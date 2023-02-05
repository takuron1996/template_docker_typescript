import { hello } from "../src/main";

test("hello functions test", () => {
	expect(hello()).toBe("hello");
});
