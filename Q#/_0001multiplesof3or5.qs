//
// https://quantum.microsoft.com/en-us/tools/quantum-coding
// _0001multiplesof3or5.qs
// 
// Copyright 2025 @GitHub JoergEm
//
// This program is WITHOUT ANY WARRANTY; without even the implied
// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
//

namespace Quantum.Demo {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;

    @EntryPoint()
    operation _0001multiplesof3or5() : Int {
        let series = 1..999;
        mutable summe = 0;
        for nummer in series {
            if (nummer % 3 == 0 or nummer % 5 == 0) {
                set summe += nummer;
            }
        }
        Message($"{summe}");
        return summe;
    }
}
