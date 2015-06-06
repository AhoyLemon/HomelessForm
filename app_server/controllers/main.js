/* GET intake page */
module.exports.intake = function(req, res){
  res.render('intake', { title: 'Intake form for core client information' });
};