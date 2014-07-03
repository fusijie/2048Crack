.class final enum Lcom/nextpeer/android/as$ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/as$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/as$ab;

.field private static final synthetic c:[Lcom/nextpeer/android/as$ab;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/nextpeer/android/as$ab;

    const-string v1, "Developer"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/as$ab;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/as$ab;->a:Lcom/nextpeer/android/as$ab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nextpeer/android/as$ab;

    const/4 v1, 0x0

    sget-object v2, Lcom/nextpeer/android/as$ab;->a:Lcom/nextpeer/android/as$ab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/as$ab;->c:[Lcom/nextpeer/android/as$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/nextpeer/android/as$ab;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/as$ab;
    .locals 1

    const-class v0, Lcom/nextpeer/android/as$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/as$ab;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/as$ab;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/as$ab;->c:[Lcom/nextpeer/android/as$ab;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/as$ab;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/as$ab;->b:I

    return v0
.end method
