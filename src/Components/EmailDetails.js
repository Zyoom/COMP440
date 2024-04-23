import React, { useState, useEffect } from 'react';
import axios from 'axios';

function EmailDetail({ match }) {
  const [email, setEmail] = useState(null);
  const emailId = match.params.id;

  useEffect(() => {
    axios.get(`http://127.0.0.1:5000/emails/${emailId}`)
      .then(response => {
        setEmail(response.data);
      })
      .catch(error => console.log(error));
  }, [emailId]);

  return (
    <div>
      {email && (
        <>
          <h1>Subject: {email.subject}</h1>
          <p>{email.body}</p>
          {/* Implement reply form and conversation history */}
        </>
      )}
    </div>
  );
}

export default EmailDetail;
