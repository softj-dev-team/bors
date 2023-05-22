.class public Lcom/sdkbox/collection/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final __emptyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sdkbox/collection/Pair<",
            "TT;TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdkbox/collection/MapBuilder;->__emptyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/collection/MapBuilder;->pairs:Ljava/util/ArrayList;

    return-void
.end method

.method public static emptyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/sdkbox/collection/MapBuilder;->__emptyMap:Ljava/util/Map;

    return-object v0
.end method

.method public static of()Lcom/sdkbox/collection/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/sdkbox/collection/MapBuilder<",
            "TT;TU;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/sdkbox/collection/MapBuilder;

    invoke-direct {v0}, Lcom/sdkbox/collection/MapBuilder;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;TU;)",
            "Ljava/util/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/sdkbox/collection/MapBuilder;

    invoke-direct {v0}, Lcom/sdkbox/collection/MapBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/sdkbox/collection/MapBuilder;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sdkbox/collection/MapBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sdkbox/collection/MapBuilder;->buildMutable()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static ofPair(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sdkbox/collection/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;TU;)",
            "Lcom/sdkbox/collection/MapBuilder<",
            "TT;TU;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/sdkbox/collection/MapBuilder;

    invoke-direct {v0}, Lcom/sdkbox/collection/MapBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/sdkbox/collection/MapBuilder;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sdkbox/collection/MapBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sdkbox/collection/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sdkbox/collection/ImmutableMap<",
            "TT;TU;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/sdkbox/collection/MapBuilder;->pairs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdkbox/collection/Pair;

    .line 23
    iget-object v3, v2, Lcom/sdkbox/collection/Pair;->key:Ljava/lang/Object;

    iget-object v2, v2, Lcom/sdkbox/collection/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lcom/sdkbox/collection/ImmutableMap;

    invoke-direct {v1, v0}, Lcom/sdkbox/collection/ImmutableMap;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public buildMutable()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/sdkbox/collection/MapBuilder;->pairs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdkbox/collection/Pair;

    .line 33
    iget-object v3, v2, Lcom/sdkbox/collection/Pair;->key:Ljava/lang/Object;

    iget-object v2, v2, Lcom/sdkbox/collection/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public pair(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sdkbox/collection/MapBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)",
            "Lcom/sdkbox/collection/MapBuilder<",
            "TT;TU;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/sdkbox/collection/MapBuilder;->pairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdkbox/collection/Pair;

    invoke-direct {v1, p1, p2}, Lcom/sdkbox/collection/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
