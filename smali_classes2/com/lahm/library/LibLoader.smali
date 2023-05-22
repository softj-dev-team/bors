.class public interface abstract Lcom/lahm/library/LibLoader;
.super Ljava/lang/Object;
.source "LibLoader.java"


# virtual methods
.method public abstract loadLibrary(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
