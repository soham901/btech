import React from "react";

export default class LegacyComp extends React.Component {
    render() {
        return (
            <h1>
                <span style={{
                    color: "red",
                    fontWeight: "bold",
                    "animation": "blink 1s infinite cubic-bezier(.5, 0, 1, 1)",
                }}>Legacy</span> Component
            </h1>
        );
    }
}