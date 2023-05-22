.class public interface abstract Lcom/sdkbox/plugin/InterfaceIAP;
.super Ljava/lang/Object;
.source "InterfaceIAP.java"


# static fields
.field public static final PluginType:I = 0x3


# virtual methods
.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initIAP(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract purchase(Ljava/lang/String;I)V
.end method

.method public abstract requestProducts()V
.end method

.method public abstract restorePurchase()V
.end method
