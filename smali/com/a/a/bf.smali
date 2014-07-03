.class public abstract enum Lcom/a/a/bf;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/bf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/bf;

.field public static final enum b:Lcom/a/a/bf;

.field private static final synthetic c:[Lcom/a/a/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/a/a/bg;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/a/a/bg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/bf;->a:Lcom/a/a/bf;

    new-instance v0, Lcom/a/a/bh;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/a/a/bh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/bf;->b:Lcom/a/a/bf;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/bf;

    const/4 v1, 0x0

    sget-object v2, Lcom/a/a/bf;->a:Lcom/a/a/bf;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/a/a/bf;->b:Lcom/a/a/bf;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/bf;->c:[Lcom/a/a/bf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/a/a/bf;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/bf;
    .locals 1

    const-class v0, Lcom/a/a/bf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/bf;

    return-object v0
.end method

.method public static values()[Lcom/a/a/bf;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/a/bf;->c:[Lcom/a/a/bf;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/a/bf;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
