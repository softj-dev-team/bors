.class public Lcom/sdkbox/plugin/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/plugin/JSON$Type;
    }
.end annotation


# static fields
.field public static final EmptyJSON:Lcom/sdkbox/plugin/JSON;


# instance fields
.field private _json:Ljava/lang/Object;

.field private _type:Lcom/sdkbox/plugin/JSON$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    invoke-direct {v0}, Lcom/sdkbox/plugin/JSON;-><init>()V

    sput-object v0, Lcom/sdkbox/plugin/JSON;->EmptyJSON:Lcom/sdkbox/plugin/JSON;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 37
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/sdkbox/plugin/JSON$Type;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 78
    iput-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_STRING:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 52
    iput-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    .line 58
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/sdkbox/plugin/JSON;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_BOOLEAN:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lcom/sdkbox/plugin/JSON;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    iput-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    .line 65
    iput-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    return-void
.end method

.method public static ToMap(Lcom/sdkbox/plugin/JSON;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdkbox/plugin/JSON;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->getObjectElements()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/JSON;

    invoke-virtual {v1}, Lcom/sdkbox/plugin/JSON;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static __getImpl(Lcom/sdkbox/plugin/JSON;[Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdkbox/plugin/JSON;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/sdkbox/plugin/JSON;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->getObjectElements()Ljava/util/Map;

    move-result-object p0

    .line 230
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdkbox/plugin/JSON;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/sdkbox/plugin/JSON;->__getImpl(Lcom/sdkbox/plugin/JSON;[Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static initializeFromArray([Ljava/lang/Object;)Lcom/sdkbox/plugin/JSON;
    .locals 4

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 84
    invoke-static {v3}, Lcom/sdkbox/plugin/JSON;->initializeFromObject(Ljava/lang/Object;)Lcom/sdkbox/plugin/JSON;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance p0, Lcom/sdkbox/plugin/JSON;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/plugin/JSON;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    invoke-direct {p0, v0, v1}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/Object;Lcom/sdkbox/plugin/JSON$Type;)V

    return-object p0
.end method

.method public static initializeFromMap(Ljava/util/Map;)Lcom/sdkbox/plugin/JSON;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sdkbox/plugin/JSON;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    invoke-direct {v0}, Lcom/sdkbox/plugin/JSON;-><init>()V

    .line 91
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sdkbox/plugin/JSON;->initializeFromObject(Ljava/lang/Object;)Lcom/sdkbox/plugin/JSON;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static initializeFromObject(Ljava/lang/Object;)Lcom/sdkbox/plugin/JSON;
    .locals 3

    .line 98
    instance-of v0, p0, Lcom/sdkbox/plugin/JSON;

    if-eqz v0, :cond_0

    .line 99
    check-cast p0, Lcom/sdkbox/plugin/JSON;

    return-object p0

    .line 101
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Array;

    if-eqz v0, :cond_1

    .line 102
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sdkbox/plugin/JSON;->initializeFromArray([Ljava/lang/Object;)Lcom/sdkbox/plugin/JSON;

    move-result-object p0

    return-object p0

    .line 104
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 105
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/sdkbox/plugin/JSON;->initializeFromMap(Ljava/util/Map;)Lcom/sdkbox/plugin/JSON;

    move-result-object p0

    return-object p0

    .line 107
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/JSON;-><init>(I)V

    return-object v0

    .line 110
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 111
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/JSON;-><init>(I)V

    return-object v0

    .line 113
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 114
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/JSON;-><init>(F)V

    return-object v0

    .line 116
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 117
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sdkbox/plugin/JSON;-><init>(D)V

    return-object v0

    .line 119
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 120
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/JSON;-><init>(Z)V

    return-object v0

    .line 122
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 123
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 125
    :cond_8
    new-instance p0, Lcom/sdkbox/plugin/JSON;

    const/4 v0, 0x0

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_NULL:Lcom/sdkbox/plugin/JSON$Type;

    invoke-direct {p0, v0, v1}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/Object;Lcom/sdkbox/plugin/JSON$Type;)V

    return-object p0
.end method

.method public static nativeNewArrayOfJSON([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 69
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    invoke-direct {v0, p0, v1}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/Object;Lcom/sdkbox/plugin/JSON$Type;)V

    return-object v0
.end method

.method public static nativeNewMap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 73
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    invoke-direct {v0, p0, v1}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/Object;Lcom/sdkbox/plugin/JSON$Type;)V

    return-object v0
.end method


# virtual methods
.method public asStringArray()[Ljava/lang/String;
    .locals 6

    .line 244
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, [Lcom/sdkbox/plugin/JSON;

    check-cast v0, [Lcom/sdkbox/plugin/JSON;

    .line 246
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 248
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 249
    invoke-virtual {v5}, Lcom/sdkbox/plugin/JSON;->getStringValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public varargs get([Ljava/lang/String;)Lcom/sdkbox/plugin/JSON;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_2

    .line 212
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    aget-object p1, p1, v2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sdkbox/plugin/JSON;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    sget-object p1, Lcom/sdkbox/plugin/JSON;->EmptyJSON:Lcom/sdkbox/plugin/JSON;

    :goto_1
    return-object p1

    .line 220
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-static {p0, p1, v2, v0}, Lcom/sdkbox/plugin/JSON;->__getImpl(Lcom/sdkbox/plugin/JSON;[Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 222
    new-instance p1, Lcom/sdkbox/plugin/JSON;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/plugin/JSON;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    invoke-direct {p1, v0, v1}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/Object;Lcom/sdkbox/plugin/JSON$Type;)V

    return-object p1

    .line 224
    :cond_2
    sget-object p1, Lcom/sdkbox/plugin/JSON;->EmptyJSON:Lcom/sdkbox/plugin/JSON;

    return-object p1
.end method

.method public getArrayElements()[Lcom/sdkbox/plugin/JSON;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, [Lcom/sdkbox/plugin/JSON;

    check-cast v0, [Lcom/sdkbox/plugin/JSON;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lcom/sdkbox/plugin/JSON;->getBooleanValue(Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanValue(Z)Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_BOOLEAN:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    return p1
.end method

.method public getDoubleValue()D
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntValue()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getObjectElements()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sdkbox/plugin/JSON;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_STRING:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 202
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/sdkbox/plugin/JSON;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V

    goto :goto_0

    .line 205
    :cond_0
    check-cast p2, Lcom/sdkbox/plugin/JSON;

    invoke-virtual {p0, p1, p2}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V

    :goto_0
    return-void
.end method

.method public size()I
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, [Lcom/sdkbox/plugin/JSON;

    check-cast v0, [Lcom/sdkbox/plugin/JSON;

    array-length v0, v0

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/sdkbox/plugin/JSON;->_json:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public stringify()Ljava/lang/StringBuilder;
    .locals 9

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v2, Lcom/sdkbox/plugin/JSON$Type;->T_NULL:Lcom/sdkbox/plugin/JSON$Type;

    const-string v3, "null"

    if-ne v1, v2, :cond_0

    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v2, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v1, v2, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->getDoubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v2, Lcom/sdkbox/plugin/JSON$Type;->T_BOOLEAN:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v1, v2, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->getBooleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v2, Lcom/sdkbox/plugin/JSON$Type;->T_STRING:Lcom/sdkbox/plugin/JSON$Type;

    const-string v4, "\""

    if-ne v1, v2, :cond_4

    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 278
    :cond_4
    iget-object v1, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v2, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    const-string v5, ","

    const/4 v6, 0x0

    if-ne v1, v2, :cond_7

    const-string v1, "["

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->getArrayElements()[Lcom/sdkbox/plugin/JSON;

    move-result-object v1

    .line 281
    :goto_1
    array-length v2, v1

    if-ge v6, v2, :cond_6

    .line 282
    aget-object v2, v1, v6

    invoke-virtual {v2}, Lcom/sdkbox/plugin/JSON;->stringify()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 283
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_5

    .line 284
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    const-string v1, "]"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 288
    :cond_7
    iget-object v1, p0, Lcom/sdkbox/plugin/JSON;->_type:Lcom/sdkbox/plugin/JSON$Type;

    sget-object v2, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    if-ne v1, v2, :cond_b

    const-string v1, "{"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->getObjectElements()Ljava/util/Map;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 293
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" : "

    .line 295
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sdkbox/plugin/JSON;

    invoke-virtual {v7}, Lcom/sdkbox/plugin/JSON;->stringify()Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_3

    :cond_8
    move-object v7, v3

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_9

    .line 298
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    const-string v1, "}"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/sdkbox/plugin/JSON;->stringify()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
