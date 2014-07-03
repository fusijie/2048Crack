.class public final enum Lcom/nextpeer/android/cs$aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/cs$aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/cs$aa;

.field public static final enum b:Lcom/nextpeer/android/cs$aa;

.field public static final enum c:Lcom/nextpeer/android/cs$aa;

.field public static final enum d:Lcom/nextpeer/android/cs$aa;

.field public static final enum e:Lcom/nextpeer/android/cs$aa;

.field private static final synthetic g:[Lcom/nextpeer/android/cs$aa;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/nextpeer/android/cs$aa;

    const-string v1, "Play"

    invoke-direct {v0, v1, v7, v3}, Lcom/nextpeer/android/cs$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cs$aa;->a:Lcom/nextpeer/android/cs$aa;

    new-instance v0, Lcom/nextpeer/android/cs$aa;

    const-string v1, "Stop"

    invoke-direct {v0, v1, v3, v4}, Lcom/nextpeer/android/cs$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cs$aa;->b:Lcom/nextpeer/android/cs$aa;

    new-instance v0, Lcom/nextpeer/android/cs$aa;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v4, v5}, Lcom/nextpeer/android/cs$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cs$aa;->c:Lcom/nextpeer/android/cs$aa;

    new-instance v0, Lcom/nextpeer/android/cs$aa;

    const-string v1, "Rewind"

    invoke-direct {v0, v1, v5, v6}, Lcom/nextpeer/android/cs$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cs$aa;->d:Lcom/nextpeer/android/cs$aa;

    new-instance v0, Lcom/nextpeer/android/cs$aa;

    const-string v1, "FastForward"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/nextpeer/android/cs$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cs$aa;->e:Lcom/nextpeer/android/cs$aa;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nextpeer/android/cs$aa;

    sget-object v1, Lcom/nextpeer/android/cs$aa;->a:Lcom/nextpeer/android/cs$aa;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nextpeer/android/cs$aa;->b:Lcom/nextpeer/android/cs$aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/cs$aa;->c:Lcom/nextpeer/android/cs$aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/cs$aa;->d:Lcom/nextpeer/android/cs$aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/cs$aa;->e:Lcom/nextpeer/android/cs$aa;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nextpeer/android/cs$aa;->g:[Lcom/nextpeer/android/cs$aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/cs$aa;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/cs$aa;
    .locals 1

    const-class v0, Lcom/nextpeer/android/cs$aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/cs$aa;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/cs$aa;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/cs$aa;->g:[Lcom/nextpeer/android/cs$aa;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/cs$aa;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cs$aa;->f:I

    return v0
.end method
