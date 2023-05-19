package tech.houssemnasri.gce;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import scala.collection.JavaConverters;
import scala.collection.mutable.HashSet;
import scala.math.BigInt;
import treadle.vcd.Change;
import treadle.vcd.VCD;

public class VCDExtensions {
    private final VCD vcd;

    public VCDExtensions(VCD vcd) {
        this.vcd = vcd;
    }

    public Map<String, BigInteger> getLatestWiresValue() {
        Map<Object, HashSet<Change>> valuesAtTimeMap = JavaConverters.asJava(vcd.valuesAtTime());
        Map<String, BigInteger> result = new HashMap<>();
        Map<String, WireTime> wireTimeMap = new HashMap<>();

        for (Object timeObj : valuesAtTimeMap.keySet()) {
            Long time = (Long) timeObj;
            Set<Change> changesAtTime = JavaConverters.asJava(valuesAtTimeMap.get(time));
            for (Change change : changesAtTime) {
                if (!wireTimeMap.containsKey(change.wire().id())) {
                    wireTimeMap.put(change.wire().id(), new WireTime(change.value(), time));
                }
                WireTime wireTime = wireTimeMap.get(change.wire().id());
                if (time > wireTime.time) {
                    wireTime.time = time;
                    wireTime.value = change.value();
                }
            }
        }

        for (String wireId : wireTimeMap.keySet()) {
            result.put(wireId, wireTimeMap.get(wireId).value.bigInteger());
        }

        return result;
    }

    private static class WireTime {
        private BigInt value;
        private Long time;

        WireTime(BigInt value, Long time) {
            this.value = value;
            this.time = time;
        }
    }
}
