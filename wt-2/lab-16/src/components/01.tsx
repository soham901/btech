const DisplayArray = ({ data }: { data: number[] }) => {
  return (
    <div>
      {data.map((item, index) => (
        <div key={index}>{item}</div>
      ))}
    </div>
  )
}

export default DisplayArray
