module com.google.common {
    requires transitive java.logging;
    requires transitive java.xml;

    requires transitive checker.qual;
    requires transitive error.prone.annotations;
    requires transitive j2objc.annotations;
    requires transitive animal.sniffer.annotations;

    exports com.google.common.annotations;
    exports com.google.common.base;
    exports com.google.common.cache;
    exports com.google.common.collect;
    exports com.google.common.escape;
    exports com.google.common.eventbus;
    exports com.google.common.graph;
    exports com.google.common.hash;
    exports com.google.common.html;
    exports com.google.common.io;
    exports com.google.common.math;
    exports com.google.common.net;
    exports com.google.common.primitives;
    exports com.google.common.reflect;
    exports com.google.common.util.concurrent;
    exports com.google.common.xml;

    // BEWARE ! https://github.com/google/guava/issues/3147
    // See https://github.com/google/guava/commit/8287cdfa317ea97a7a5e8e1a0f5a786ae09d2eac
    // Fixed in 26.0-jre
    // uses com.google.common.base.PatternCompiler;
}