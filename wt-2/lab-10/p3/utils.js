export const standardRes = (
    res,
    status = 200,
    message = 'Success',
    data = null
) => {
    res.status(status).send({
        message,
        data
    });
}