import React from 'react';
import NoteContainer from './note_container';
import NewNoteContainer from './new_note_container';

const NoteDetail = props => {
  const { note, location } = props;
  let showNote;
  if (location.pathname === '/new-note') {
    showNote =
      <section className="note-detail-container">
        <header className="note-detail-header">
          <figure className="note-detail-reminder">
          </figure>
          <figure className="note-detail-info">
          </figure>
          <figure className="note-detail-delete">
          </figure>
          <figure className="note-detail-more">
          </figure>
        </header>
        <NewNoteContainer />
      </section>;
  } else {  
    if (note) {
      showNote =
      <section className="note-detail-container">
        <header className="note-detail-header">
          <figure className="note-detail-reminder">
          </figure>
          <figure className="note-detail-info">
          </figure>
          <figure className="note-detail-delete">
          </figure>
          <figure className="note-detail-more">
          </figure>
        </header>
        <NoteContainer note={ note } />
      </section>;
    }
  }
  return (
    <div>
      { showNote }
    </div>
  );
};

export default NoteDetail;
