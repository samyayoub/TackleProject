// import flatpickr from 'flatpickr';

const toggleDateInputs = function() {
    const dueDateInput = document.getElementById('due_date');
  
    if (startDateInput && endDateInput) {
      const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)
  
      flatpickr(dueDateInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
      onChange: function(selectedDates, selectedDate) {
        if (selectedDate === '') {
          costs.classList.remove('is-visible');
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate() + 1);
      }
    });
  };
  
// export { toggleDateInputs }