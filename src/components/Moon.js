import React from 'react';
import './Sky.css';
import {ReactComponent as Iconmoon} from '../icons/Moon.svg'

function Moon() {
  return (
    <div className="Moon">
      <Iconmoon height={72} width={72} fill={'#fdd830'}/>
    </div>
  );
}

export default Moon;