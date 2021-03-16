import logo from './logo.svg';
import "bootstrap/dist/css/bootstrap.css";
import './App.css';
import { Navbar, Nav, Dropdown, Tabs, Table, Tab } from "react-bootstrap";
import React, { Component } from 'react';
import Request from "./Services/Request";


class App extends Component {
  constructor() {
    super();
    this.state = {
      activeGroup: 0,
      students: null,
      buttons: {},
      userId: null,
      subjects: null,
      view: "default",
      journals: null
    };
  }

  componentDidMount() {
    Request.getStudents().then((students) => {
      students.forEach(item => {
          const buttons = this.state.buttons;
          buttons[item.study_group_id] = item.groupName;
          this.setState({
            buttons: {
              ...buttons
            }
          })
      });
      this.setState({ students: students });
    });

    Request.getSubjects().then((subjects) => {
      this.setState({ subjects: subjects });
    });
    Request.getJournals().then((journals) => {
      this.setState({ journals: journals });
    });
  }


  render() {

    const buttons = [];
    buttons.push(
      <button key="0" onClick = {()=>
        {
          this.setState({activeGroup: 0});
        }
      }>
       Все < /button>
    )
    for (let i in this.state.buttons) {
      buttons.push(
          <button key={i} onClick = {()=>
          {
            this.setState({activeGroup: i});
          }
        }>
         {this.state.buttons[i]} < /button>
      )
    }

    const handleOnClick = ( id ) => {
      this.setState({ userId: id })
    }

    let iface = null;

    if(this.state.view == "subjects")
    {
      iface = <PlanView subjects={this.state.subjects}></PlanView>
    }
    else if(this.state.view == "journal")
    {
      iface = <JournalView journals={this.state.journals}></JournalView>
    }
    else
    {
      if(this.state.students)
      {
        iface = <JournalTable
        students={this.state.students} setUser={handleOnClick} groupId={this.state.activeGroup} />
      }
    }


    return (
      <div className="App">
        <button key="listStudent" onClick = {() => 
          this.setState({view: "default"})
        }>Список студентов</button>
        <button key="listSubject" onClick = {() => 
          this.setState({view: "subjects"})
        }>Список предметов</button>
        <button key="listJournal" onClick = {() => 
          this.setState({view: "journal"})
        }>Журнал</button>
        
      
         {iface}
        
        

    {
      this.state.view == "default"? buttons.map(item => item):null
    }



      </div>
    );
  }

}

class UserCard extends Component {

  render () {
    return (
        <div>Id: {this.props.userId} <button onClick={() => { this.props.setUser( null ) }} >Скрыть</button> </div>
    )
  }
}

class JournalView extends Component{
  render()
  {
    return <Table bordered>
      <thead>
        <tr>
          <th>#</th>
          <th>Студент</th>
          <th>Количество пересдач</th>
          <th>Оценка</th>
        </tr>
      </thead>
      <tbody>
        {this.props.journals.map((journal, index) => {
          let classS = null;
          if(journal.mark.value < "3")
          {
            classS = "bg-danger text-white";
          }
            return <tr key={index}>
              <td class={classS}>{index + 1}</td>
              <td class={classS}>{journal.student.surname} {journal.student.name} {journal.student.second_name}</td>
              <td class={classS}>{journal.count}</td>
              <td class={classS}>{journal.mark.name} {journal.mark.value?"("+journal.mark.value +")":null}</td>
            </tr>
        })}

      </tbody>
    </Table>
  }
}

class PlanView extends Component {
  render ()
  {
    return <Table bordered>
      <thead>
        <tr>
          <th>#</th>
          <th>Название</th>
          <th>Тип аттестации</th>
        </tr>
      </thead>
      <tbody>
        {this.props.subjects.map((subject, index) => {
            return <tr key={index}>
              <td>{index + 1}</td>
              <td>{subject.subject}</td>
              <td>{subject.exam}</td>
            </tr>
        })}

      </tbody>
    </Table>
  }
}

class JournalTable extends Component {


  render() {
    return <Table bordered>
      <thead>
        <tr>
          <th>#</th>
          <th>ФИО</th>
          <th>Группа</th>
        </tr>
      </thead>
      <tbody>
        {this.props.students.map((student, index) => {
          if(student.study_group_id == this.props.groupId || this.props.groupId == 0)
          {
            return <tr key={index}>
              <td>{index + 1}</td>
              <td onClick={() => { this.props.setUser( student.id ) } }>{student.surname} {student.name}  {student.second_name}</td>
              <td>{student.groupName}</td>
            </tr>
            }
        })}

      </tbody>
    </Table>
  }
}

export default App;
