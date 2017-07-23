import { connect } from 'react-redux';
import Notes from './notes';
import { fetchSingleNote, fetchAllNotes } from '../../actions/note_actions';
import { fetchNotesFromNotebook } from '../../actions/notebook_actions';

const mapStateToProps = state => {
  return {
    notes: state.notes,
    note: state.note
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchSingleNote: noteId => dispatch(fetchSingleNote(noteId)),
    fetchAllNotes: noteId => dispatch(fetchAllNotes()),
    fetchNotesFromNotebook: notebookId => dispatch(fetchNotesFromNotebook(notebookId))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Notes);
