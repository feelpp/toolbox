/* global d */
const times = d.map(i => i['T'])

const data = [{
  name: 'IC2 reference results of {test-name}',
  type: 'scatter',
  x: times,
  y: d.map(i => i['Ref-{test-key}-s1']),
  showlegend: true,
  line: {color: '#FF99BB'}
}, {
  name: 'IC2 example results of {test-name}',
  type: 'scatter',
  x: times,
  y: d.map(i => i['Results-{test-key}-s1']),
  showlegend: true,
  line: {color: '#CC3333'}
}, {
  name: 'Output reference results of {test-name}',
  type: 'scatter',
  x: times,
  y: d.map(i => i['Ref-{test-key}-s2']),
  showlegend: true,
  line: {color: '#BB99FF'}
}, {
  name: 'Output example results of {test-name}',
  type: 'scatter',
  x: times,
  y: d.map(i => i['Results-{test-key}-s2']),
  showlegend: true,
  line: {color: '#3333CC'}
}]

const layout = {
  title: 'Temperature'
}
