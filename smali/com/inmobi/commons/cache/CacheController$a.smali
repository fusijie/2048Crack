.class final Lcom/inmobi/commons/cache/CacheController$a;
.super Ljava/lang/Object;
.source "CacheController.java"

# interfaces
.implements Lcom/inmobi/commons/cache/CacheController$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/cache/CacheController;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p1}, Lcom/inmobi/commons/cache/CacheController;->a(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
