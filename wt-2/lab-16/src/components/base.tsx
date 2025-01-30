import { ReactNode } from "react"

const Base = ({ data, Card }: { data: unknown[], Card: ReactNode }) => {
    return (
        <div>
            {data.map((item) => <Card {...item} />)}
        </div>
    )
}

export default Base
