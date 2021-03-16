const Request = {
    getStudents() {
        return fetch("http://localhost:8080/student/all").then(res => res.json());
    },
    getSubjects() {
        return fetch("http://localhost:8080/plan/all").then(res => res.json());
    },
    getJournals() {
        return fetch("http://localhost:8080/journal/all").then(res => res.json());
    }
};
export default Request