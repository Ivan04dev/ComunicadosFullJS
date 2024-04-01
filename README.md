Comunicados FullStack con JS

- Realiza filtro por marca y ejecutivos
- Muestra las ciudades con base al filtro
- En la siguiente versión se agregará un nuevo arreglo que devolverá el arreglo final de las ciudades seleccionadas

- https://chat.openai.com/share/d573d63a-e5c0-4caf-986b-41ad99b1e5e5

<div className="mt-4">
                    {/* Renderizar cada división */}
                    {Object.keys(groupedCities).map((division, divisionIndex) => (
                      <div className="mt-2" key={divisionIndex}>
                        <h3 className="col-md mt-2">
                          <input type="checkbox" value={division} /> {' '}
                          {division}
                        </h3>
                        <label></label>
                        {/* Renderizar una tabla para cada división */}
                        <div className="row mt-2">
                          {/* Renderizar cada región en columnas */}
                          {Object.keys(groupedCities[division]).map((region, regionIndex) => (
                            <div className="col-md mt-2" key={regionIndex} >
                              {/* <h4>Región {regionIndex + 1}</h4> */}
                              <h4 className="col-md mt-2">
                                <input type="checkbox" value={region} /> {' '}
                                {region}
                              </h4>
                              <label></label>
                              {/* Renderizar cada ciudad dentro de la región correspondiente */}
                              <div className="col-md mt-2">
                                {groupedCities[division][region].map((city, cityIndex) => (
                                  <div className="col-md mt-2" key={cityIndex}>
                                    <input type="checkbox" value={city} /> {' '}
                                    <label>{city}</label>
                                  </div>
                                ))}
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    ))}
                  </div>

                  <p className="mt-2">Seleccionaste: {marcaSeleccionada}</p>
                  {console.log(marcaSeleccionada)}
                </div>
