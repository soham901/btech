export class Data<T> {
    private data: T[];

    constructor(data: T[]) {
        this.data = data;
    }

    filter(filterCb: (item: T) => boolean): Data<T> {
        return new Data(this.data.filter(filterCb));
    }

    toString(): string {
        return this.data.join("\n");
    }

    count(): number {
        return this.data.length;
    }

    get(): T[] {
        return this.data;
    }
}
