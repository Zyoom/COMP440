import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

function EmailList() {
  const [emails, setEmails] = useState([]);

  useEffect(() => {
    axios.get('http://127.0.0.1:5000/emails')
      .then(response => {
        setEmails(response.data);
      })
      .catch(error => console.log(error));
  }, []);

  return (
    <div>
      <h1>Email Pool</h1>
      <ul>
        {emails.map(email => (
          <li key={email.email_id}>
            <Link to={`/email/${email.email_id}`}>{email.subject}</Link>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default EmailList;
